import ./words
from strutils import join, capitalizeAscii

const smallWords = [
    "a",
    "an",
    "and",
    "as",
    "at",
    "but",
    "by",
    "en",
    "for",
    "if",
    "in",
    "of",
    "on",
    "or",
    "the",
    "to",
    "v",
    "via",
    "vs",
]

proc title*(str: string): string =
  let parts = words(str)
  var newWords = newSeq[string]()

  for index, word in parts:
    if index == 0:
      # First word, always capitalize
      newWords.add(capitalizeAscii(word))
    else:
      if find(smallWords, word) > -1:
        newWords.add(word)
      else:
        newWords.add(capitalizeAscii(word))

  return join(newWords, " ")
