class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return 'I'm crazy'
    
    def __mul__(self, right):
        """
        Multiplies two vectors
        
        Returns the result of multiplying two numers together.
        
        EXAMPLES::
        sage: vec_one = Gauss(1, 1)
        sage: vec_two = Gauss(1/2, 4/2)
        sage: vec_one * vec_two
        <-3/2 + 5/2i>
        sage: vec_two = Gauss(0, 0)
        sage: vec_one * vec_two
        <0 + 0i>
        """
        return Gauss(self.a * right.a - self.b * right.b, self.a * right.b + self.b * right.a)
    
    def hello(self):
        This is a buggy function, not python syntax (although close)

