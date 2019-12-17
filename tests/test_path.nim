import unittest
import anycase/path

suite "path":
  test "plain -> path":
    check path("change my case") == "change/my/case"

  test "path -> path":
    check path("change/my/case") == "change/my/case"

  test "kebab -> path":
    check path("change-my-case") == "change/my/case"

  test "camel -> path":
    check path("changeMyCase") == "change/my/case"

  test "pascal -> path":
    check path("ChangeMyCase") == "change/my/case"

  test "snake -> path":
    check path("change_my_case") == "change/my/case"

  test "title -> path":
    check path("Change My Case") == "changeMyCase"

