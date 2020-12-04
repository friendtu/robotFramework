from robot.api.deco import keyword
class MyLibrary:
    ROBOT_AUTO_KEYWORDS=False

    @keyword
    def my_keyword(self,arg):
        return self._helper_method(arg)

    def _helper_method(self,arg):
        return arg.upper()