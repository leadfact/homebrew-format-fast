# Homebrew tap for formatfast

Формулы Homebrew для [formatfast](https://github.com/leadfact/format-fast) —
локального CLI для форматирования JSON/JSONL и чтения многострочных логов.
Исходный код и релизы находятся в `leadfact/format-fast`.

## Установка

```sh
brew install leadfact/format-fast/formatfast
formatfast --version
formatfast '{"message":"hello\nworld"}' --extract message
```

Homebrew автоматически подключает этот репозиторий. Отдельный `brew tap` не нужен.
Формула устанавливает стабильный релиз `0.3.0`: готовый бинарник для macOS/Linux
на arm64/amd64 с проверкой SHA-256. Go для установки не требуется.

Обновление установленной версии:

```sh
brew update
brew upgrade leadfact/format-fast/formatfast
```

Если ранее tap был подключён к основному репозиторию через явный URL,
переключи его на этот репозиторий:

```sh
brew tap --custom-remote leadfact/format-fast https://github.com/leadfact/homebrew-format-fast.git
brew update
```

Если уже установлена HEAD-версия, для перехода на стабильную:

```sh
brew uninstall leadfact/format-fast/formatfast
brew install leadfact/format-fast/formatfast
```

## Обновление формулы сопровождающим

В `leadfact/format-fast` отправь тег `vX.Y.Z`, дождись успешного Release workflow
и опубликуй созданный Draft. Затем из каталога этого tap скачай `formatfast.rb`
из опубликованного релиза, например для `v0.3.0`:

```sh
curl --fail --location --output Formula/formatfast.rb \
  https://github.com/leadfact/format-fast/releases/download/v0.3.0/formatfast.rb
ruby -c Formula/formatfast.rb
git diff -- Formula/formatfast.rb
git add Formula/formatfast.rb
git commit -m "Update formatfast to 0.3.0"
git push origin main
```

Используй формулу именно из релиза: её SHA-256 должны совпадать с опубликованными
архивами. Локально пересобранные архивы могут иметь другие контрольные суммы.
Workflow основного проекта создаёт черновик релиза; этот tap автоматически не обновляет.
