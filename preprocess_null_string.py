import argparse


def set_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--path', default="./atis/test/en.classification.txt", type=str)
    return parser.parse_args()


args = set_args()
with open(args.path, 'r') as fr:
    lines = fr.read().replace("\n\n", "\nwhat\n")
with open("./tmp.txt", 'w') as fw:
    fw.write(lines)
