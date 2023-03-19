■初期構築手順
01. S3バケットを手動で作成
02. _**.tfbackendファイルのバケット名を01で作成したバケット名に変更し、コミット＆プッシュ
03. terraform初期化コマンド実行、import
         terraform init -reconfigure -backend-config=_pd.tfbackend
         terraform import -var-file=_pd.tfvars module.s3_terraform_main[0].aws_s3_bucket.this バケット名
04. コードより、VPCのみ起動する
         terraform plan -var-file=_pd.tfvars -target=module.vpc_main
         terraform apply -var-file=_pd.tfvars -target=module.vpc_main
         → 問題なければyesを入力
05. _**.tfvarsファイルのvpc_id、igw_idを更新してコミット＆プッシュ

■命名規則
・大文字小文字の区別
大文字：企業を識別するもの、システムを識別するもの、環境を識別するもの
小文字：リソースを識別するもの

■作成順序について
・VPCは最初に作成する→作成後_**.tfbackendファイルのIDを更新する
・EC2の前にSGとsubnetとIAMを作成する
・SGはグループ作成後にルールを作成する
・Lambdaの前にIAM、EventBridge、RDS、EC2を作成する。

■手動作成項目
・SNSのサブスクリプション
    EMAILに設定する場合、受信側でConfirmボタンを押す必要があり、
    即時反映できないためterraform非対応となっている
  ・terraform-bucket
    terraformのtfstateファイルを格納するバケット
    これがないとterraformが実行できないため、先に手動作成し、importコマンドにてterraform管理対象にする必要がある

■IAMuser_gpgkey作成方法、パスワード復号方法
・鍵の生成
    01.鍵の生成:gpg --gen-key
    02.キー名とパスワードを入力する。
  ・鍵の保存
  01.公開鍵の保存：gpg -o ./[公開鍵のキー名]  --export [鍵の生成で作成したキー名]
  02.秘密鍵の保存：gpg -o ./[秘密鍵のキー名] --export-secret-key [鍵の生成で作成したキー名]
  ・公開鍵をBase64エンコードして保存
  01.cat [公開鍵のキー名] | base64 | tr -d '\n' > [Base64エンコード後のキー名].base64
  
  ・パスワー復号方法(idとpasswordの一括生成)
terraform output -json | ruby -rjson -e 'json = JSON.load(ARGF); values = \
json["username"]["value"]; keys = %w(id encrypted_password); puts \
[keys, *keys.map{|key| values.map{|value| v = value[1][key].split; \
key == "encrypted_password" ? v.map{|s| `echo #{s} | \
base64 -di | gpg -r SDX_iam_user_key`.chomp} : v}}.transpose].map{|a| a.join(",")}'


参考にした記事
https://tech.andpad.co.jp/entry/2021/11/25/170000#%E5%90%8C%E4%B8%80%E3%82%B3%E3%83%BC%E3%83%89%E3%81%A7Terraform%E3%82%92%E8%A4%87%E6%95%B0%E3%82%A2%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E8%A4%87%E6%95%B0%E7%92%B0%E5%A2%83%E3%81%B8plan-apply%E3%81%97%E3%81%9F%E3%81%84

・Roleじゃなくてアクセスキー、シークレットアクセスキーを使用する
※各アクセスキーをaws configureでpd,st,drで設定する。

・main.tfのproviderでprofile = var.profile_nameを設定
※変数化して各varsファイルでprofile_name  = "pd"、"st"、"dr"を指定すれば環境ごとに作成できる
