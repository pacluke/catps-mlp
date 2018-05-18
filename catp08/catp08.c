int x = 1;
void inc (int n) {
    x += n;
}

void print (void) {
    printf ("\n\n\n\n%d\n\n\n\n", x);
}

void primeiro (void) {
    inc (7);
    print ();
}

void segundo (void) {
    int x = 9;
    inc (3);
    print ();
}

void main (int argc, char **argv) {
    inc (-1);
    primeiro ();
    print ();
    segundo ();
    print ();
}
   