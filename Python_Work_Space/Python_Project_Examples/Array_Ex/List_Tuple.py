l = [2, 3, 7, 4, 1]
l.append(20)
print(l)
l.remove(3)
print(l)
l.append(23)
print(l)
print(max(l))
print(min(l))
print("\n")

t = (23, 24, 12)
print(t*3)
print(t[0])
print("\n")

d = {1:"hello", "hi":2}
print(d[1])
for key,value in d.items():
    print(key, value)

for key in d:
    print(key)

s = {1,2,3}
print(type(s))
s1 = set(l)
print(s1)