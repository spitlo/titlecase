import unittest
import anycase/snake

suite "snake":
  test "plain -> snake":
    check snake("change my case") == "change_my_case"

  test "path -> snake":
    check snake("change/my/case") == "change_my_case"

  test "kebab -> snake":
    check snake("change-my-case") == "change_my_case"

  test "camel -> snake":
    check snake("changeMyCase") == "change_my_case"

  test "pascal -> snake":
    check snake("ChangeMyCase") == "change_my_case"

  test "snake -> snake":
    check snake("change_my_case") == "change_my_case"

  test "title -> snake":
    check snake("Change My Case") == "change_my_case"

