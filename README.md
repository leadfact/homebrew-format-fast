# Homebrew tap for formatfast

Формулы Homebrew для [formatfast](https://github.com/leadfact/format-fast) —
локального CLI для форматирования JSON/JSONL и чтения многострочных логов.
Исходный код и релизы находятся в `leadfact/format-fast`.

## Установка

Пока стабильный релиз не опубликован, установка из `main`:

```sh
brew install --HEAD leadfact/format-fast/formatfast
formatfast '{"message":"hello\nworld"}' --extract message
```

Homebrew автоматически подключает этот репозиторий. Отдельный `brew tap` не нужен.
HEAD-формула собирает исходники; Homebrew установит Go как зависимость сборки.

Обновление HEAD-версии:

```sh
brew update
brew upgrade --fetch-HEAD leadfact/format-fast/formatfast
```

Если ранее tap был подключён к основному репозиторию через явный URL,
переключи его на этот репозиторий:

```sh
brew tap --custom-remote leadfact/format-fast https://github.com/leadfact/homebrew-format-fast.git
brew update
```

## Стабильные версии

После публикации стабильного релиза и обновления формулы установка будет такой:

```sh
brew install leadfact/format-fast/formatfast
```

Стабильная формула установит готовый бинарник для macOS/Linux на arm64/amd64.
Для перехода с установленной HEAD-версии сначала удали её командой
`brew uninstall leadfact/format-fast/formatfast`, затем выполни установку выше.

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
