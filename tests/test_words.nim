import unittest
import anycase/words

suite "words":
  test "plain -> words":
    check words("change my case") == @["change", "my", "case"]

  test "path -> words":
    check words("change/my/case") == @["change", "my", "case"]

  test "kebab -> words":
    check words("change-my-case") == @["change", "my", "case"]

  test "camel -> words":
    check words("changeMyCase") == @["change", "my", "case"]

  test "pascal -> words":
    check words("ChangeMyCase") == @["change", "my", "case"]

  test "snake -> words":
    check words("change_my_case") == @["change", "my", "case"]

  test "title -> words":
    check words("The Last of the Mohicans") == @["the", "last", "of", "the", "mohicans"]

