# This makefile handles the compiling of the source code
# Start of the makefile

# ======================
# DECLARATIONS
# ======================

# The compiler
FC = gfortran

# Directories
MOD_DIR = /home/spencer/numerical-solvers-fortran/modules
OBJ_DIR = obj
INCLUDES = -I. -I$(MOD_DIR)

# Compiling flags
FCFLAGS = -g -O2 -Wall -fbounds-check

# Program name
PROGRAM = a.out
MOD_OBJECTS = config.o polynomial_interpolation.o main.o

# ======================
# MAKE COMMANDS
# ======================

# Default make command ($ make)
all: $(PROGRAM)

# Make the main program
$(PROGRAM): $(MOD_OBJECTS)
	$(FC) -o $(PROGRAM) $(MOD_OBJECTS)

# Make the objects
main.o:
	$(FC) $(FCFLAGS) -c $(FILENAME) main.f90

config.o:
	$(FC) $(FCFLAGS) -c $(FILENAME) config.f90

polynomial_interpolation.o:
	$(FC) $(FCFLAGS) -c $(FILENAME) $(MOD_DIR)/polynomial_interpolation.f90

# Special - make clean
clean:
	rm -f *.o *.mod *.MOD

veryclean: clean
	rm -f *~ $(PROGRAM)