fn main():
    var x: Int = 1
    x += 1
    print("Hello World!", x)
    do_math()
    print(add(2, 4))
    print(borrowed_add(23, 45))
    var a = 12
    var b = 26
    print(a, b, inout_add(a, b), a, b)

    let m: String = "mojo"
    let n = set_fire(m)
    print(m, n)
    let mine = MyPair(2, 4)
    mine.dump()


fn do_math():
    let x: Int = 1
    let y = 2
    print(x + y)


fn add(x: Int, y: Int) -> Int:
    return x + y


fn borrowed_add(borrowed x: Int, borrowed y: Int) -> Int:
    return x + y


fn inout_add(inout x: Int, inout y: Int) -> Int:
    y += 1
    x += 1
    return x + y


fn set_fire(owned text: String) -> String:
    text += "🔥"
    return text


struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first, self.second)
