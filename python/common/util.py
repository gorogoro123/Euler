import time

def checktime(func):
    def _wrapper(*args, **keywords):
        time1 = time.time()
        v = func(*args, **keywords)
        time2 = time.time()
        print('{:.4f} sec'.format(time2 - time1))
    return _wrapper
