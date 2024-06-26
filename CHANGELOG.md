# 4.1.0

## What's Changed

- refactor: changes type from `Double` to `Int` in `context` by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/19

# 4.0.0

## What's Changed

- chore: removes Playground by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/14
- feat: adds initializer with default base URL by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/15
- refactor: renames `generateEmbeddings` to `embeddings` by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/16
- feat: adds async stream for `chat` and `generate` by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/17
- fix: response serialization failed by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/18

# 3.0.2

## What's Changed

- Added generateEmbeddings by @thrashr888 in https://github.com/kevinhermawan/OllamaKit/pull/11
- Forward Alamofire failures by @malicious in https://github.com/kevinhermawan/OllamaKit/pull/12

# 3.0.1

## What's Changed

- refactor: migrates `chat` and `generate` from `Future` to `PassthroughSubject` by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/8
- chore: moves `Documentation.md` by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/9
- fix: `context` must be an array of integers by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/10

# 3.0.0

## What's Changed

- docs: improves the documentation by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/6
- feat: adds reactive implementation for all APIs by @kevinhermawan in https://github.com/kevinhermawan/OllamaKit/pull/5

# 2.0.1

## Added

- Ollama Chat API support by @AugustDev
- Chat API with image by @AugustDev

## Improved

- refactor: renames `OkChatRequestData` to `OKChatRequestData` by @kevinhermawan

# 2.0.0

## BREAKING CHANGES

- refactor: migrates `generate` method from completion handler to Combine

## Misc

- ci: only deploy docs when release created

# 1.0.2

## Fixed

- fix: error when copying model

## Misc

- chore: adds `Playground` to test the API on real devices

# 1.0.1

## Improved

- refactor: implements a custom date decoding strategy

# 1.0.0

Initial release
