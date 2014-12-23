from collections import defaultdict
month2day_names = defaultdict(list)
month = ''
months = []
for line in open('month_date2name.tsv'):
    if line.startswith('>'):
        month = line.strip()[1:]
        months.append(month)
    else:
        day_name = line.strip()
        month2day_names[month].append(day_name)
for month in months:
    for day_i, day_name in enumerate(month2day_names[month]):
        print '"%i %s": "%s"' % (day_i + 1, month, day_name)
