objects = main.o
f90comp = gfortran
switch = -O3

app: $(objects)
	$(f90comp) -o app $(switch) $(objects)

%.o: %.f90
	$(f90comp) -c $(switch) $<

clean:
	rm app $(objects)
