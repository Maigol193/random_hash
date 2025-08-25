import hashlib
import random
import string

def random_string(length=32):
    return ''.join(random.choices(string.ascii_letters + string.digits, k=length))

def generate_hash():
    for _ in range(1000):
        s = random_string()
        h = hashlib.md5(s.encode()).hexdigest()  # 32-character hash
        if h.startswith('00'):
            print(f"Found hash: {h} for string: {s}")
            return True
    print("No hash found starting with two zeros in 1000 tries.")
    return False

if __name__ == "__main__":
    success = generate_hash()
    if not success:
        exit(1)
