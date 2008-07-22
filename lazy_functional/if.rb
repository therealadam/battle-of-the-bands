# =========================================================
# = Using lazy evaluation to build new control structures =
# =========================================================

myif = lambda do |cond, if0, else0| 
  cond ? if0 : else0 
end

awesome = myif[1 == 1, 
               "ruby is awesome", 
               "ruby is lame"] # => 

trickierif = lambda do |cond, if0, else0|
  cond[] ? if0[] : else0[]
end

trickierif[lambda { "ruby is awesome" == "ruby is awesome" }, 
           lambda { "Ruby rules" },
           lambda { "Ruby is lame-esque" }]
                      
# =============================================================
# = We can use this to implement custom iteratorion operators =
# =============================================================

Book = Struct.new(:title, :pages)

gof    = Book.new('Design Patterns', 400)
dragon = Book.new('Principles of Compiler Design', 800)
wizard = Book.new('SICP', 900)

class Array
  def hardcore_books(&block)
    self.inject([]) do |ary, book|
      block.call(book) ?  ary << book : ary
    end
  end
end

books = [gof, dragon, wizard]
awesome_books = books.hardcore_books &lambda { |b| 
  b.pages > 400 
}
puts awesome_books.inspect
