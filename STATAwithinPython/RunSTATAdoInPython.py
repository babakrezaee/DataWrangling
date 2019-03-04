## Set dofile address
## Set the path to your STATA .exe file, from the folder you installed STATA

## Do not forget that dofile and STATA should be in string

def dostata(dofile, STATA):
    import subprocess
    cmd=[STATA,'do', dofile]
    subprocess.call(cmd)
