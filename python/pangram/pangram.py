import string
alphabet = string.ascii_letters

def is_pangram(phrase):
    import pdb; pdb.set_trace()
    words = phrase.split()
    count = 0
    for word in words:
        letters = word.split()
        count += letters.count()

    return count >= 26
