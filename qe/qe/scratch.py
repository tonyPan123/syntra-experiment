class Base:
    class MyType:
        pass


class Hello(Base):

    def func1(self, v: Hello.MyType):
        pass

    def func2(self, v):
        assert isinstance(v, Hello.MyType)
