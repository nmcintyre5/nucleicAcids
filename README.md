# DNA/RNA Sequence Manipulation in R

This R script provides functionality for manipulating DNA and RNA sequences, including generating reverse sequences, complementary sequences, and reverse-complementary sequences.

## Key Features

- **Complementary Base Pairing**: Follows the standard complementary base pairing rules for DNA and RNA:
  - DNA: A -> T, C -> G, G -> C, T -> A
  - RNA: A -> U, C -> G, G -> C, T -> A
- **Reverse Sequence Generation**: Generates the reverse sequence of a given DNA or RNA sequence.
- **Complementary Sequence Generation**: Computes the complementary sequence of a given DNA sequence.
- **Reverse-Complementary Sequence Generation**: Produces the reverse-complementary sequence of a given DNA or RNA sequence.

## Usage

1. Define the input DNA/RNA sequence.
2. Run the script to generate the desired sequences.

## Functions

- `generate_reverse_sequence(sequence)`: Generates the reverse sequence of the input sequence.
- `generate_complementary_sequence(sequence)`: Generates the complementary sequence of the input DNA sequence.
- `generate_reverse_complementary_sequence(sequence)`: Generates the reverse-complementary sequence of the input sequence.

## Note

- The script assumes valid input sequences containing only valid nucleotide characters (A, T, C, G, U).
- Any non-nucleotide characters in the input sequence will be treated as unknown bases and flagged during processing.

## Credits

This script was adapted from a Coursera course on Reverse and complement nucleic acid sequences (DNA, RNA) using R.
