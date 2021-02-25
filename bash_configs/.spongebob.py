import sys

try:
    txt=sys.argv[1].lower()
    newstring = ''.join(char.upper() if i % 2 == 0 else char for i, char in enumerate(txt, 1))
    print(
        '''
          *
           *
         ----//-------
         \..C/--..--/ \   `A
          (@ )  ( @) \  \// |w
           \          \  \---/
            HGGGGGGG    \    /`
            V `---------`--'
                <<    <<
               ###   ###'''
  )

    print("\n\t", newstring, "\n\n")


except IndexError:
    print("Error! No arguments parsed")
