# プッシュできない

> ```
> This repository is configured for Git LFS but 'git-lfs' was not found on your path. If you no longer wish to use Git LFS, remove this hook by deleting the 'pre-push' file in the hooks directory (set by 'core.hookspath'; usually '.git/hooks').
> 
> error: failed to push some refs to 'https://github.com/...'
> ```
> と出てブランチの発行ができないのですが、どうしたらいいですか？ LFS はいらないです

Git LFS を使わないのであれば、無効化して大丈夫です！

今回のエラーは、Git の Push 時に Git LFS のフック（pre-push）が実行されようとしたものの、Git LFS がインストールされていないために発生しています。

以下の手順で解決できます。

## 方法1：Git LFS のフックを削除する（おすすめ）

まず、リポジトリのフォルダで以下のコマンドを実行してください。

bash

```bash
git config --show-origin --get core.hookspath
```

何も表示されなければ、通常は `.git/hooks` が対象です。

次に、以下を実行します。

bash

```bash
rm -f .git/hooks/pre-push
```

その後、もう一度 Push してください。

bash

```bash
git push -u origin ブランチ名
```

## 方法2：Git LFS の設定も削除する

今後 Git LFS を一切使わないのであれば、追加で以下を実行します。

bash

```bash
git lfs uninstall
```

ただし、このコマンドは Git LFS がインストールされていない場合は実行できません。

## 注意点

Git LFS の設定が `.gitattributes` に残っている場合は、そちらも確認してください。

bash

```bash
cat .gitattributes
```

例えば、以下のような記述があれば LFS の設定です。

text

```text
*.psd filter=lfs diff=lfs merge=lfs -text
```

LFS を使わないのであれば、不要な設定を削除できます。

まずは方法1の `rm -f .git/hooks/pre-push` を試してみてください。

これで Git LFS のフックが実行されなくなり、通常の Git Push ができるようになるはずです。