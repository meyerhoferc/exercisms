def is_isogram(phrase):
    character_count = {}
    for character in list(phrase):
        if character.isalpha() or character == '':
            if character_count.get(character):
                character_count[character.lower()] += 1
            else:
                character_count[character.lower()] = 1

    counts = character_count.values()
    unique = True

    for count in counts:
        if count != 1: unique = False

    return unique
