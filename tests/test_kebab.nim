import unittest
import anycase/kebab

suite "kebab":
  test "plain -> kebab":
    check kebab("change my case") == "change-my-case"

  test "path -> kebab":
    check kebab("change/my/case") == "change-my-case"

  test "kebab -> kebab":
    check kebab("change-my-case") == "change-my-case"

  test "camel -> kebab":
    check kebab("changeMyCase") == "change-my-case"

  test "pascal -> kebab":
    check kebab("ChangeMyCase") == "change-my-case"

  test "snake -> kebab":
    check kebab("change_my_case") == "change-my-case"

  test "title -> kebab":
    check kebab("Change My Case") == "change-my-case"

