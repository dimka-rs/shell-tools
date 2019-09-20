#!/usr/bin/env python
import sys
import os

def usage():
    print("extend-flash.py source_file final_size dest_file")

def getFileSize(filename):
    ## TODO
    return

def doExtend(src, size, dst):
    ## TODO
    return

if __name__ == "__main__":

    if len(sys.argv) < 4:
        usage()
        exit(1)

    src_file = sys.argv[1]
    req_size = int(sys.argv[2])
    dst_file = sys.argv[3]

    if not os.path.isfile(src_file):
        print("No such file: %s" % src_file)
        exit(2)

    src_size = os.stat(src_file).st_size
    if src_size >= req_size:
        print("Source file size (%d) is equal to or bigger than required size (%d)" % (src_size, req_size))
        exit(3)

    try:
        with open(src_file, 'rb') as s:
            with open(dst_file, 'wb') as d:
                d.write(s.read())
                for i in range(req_size - src_size):
                    d.write(b'\xFF')

    except Exception as e:
        print(e)
        
