with open("./trec6/train/text_original.txt", 'r') as fr:
    lines = [x for x in fr.read().split('\n') if x]
    lines = [x for x in lines if not x.startswith("#")]

