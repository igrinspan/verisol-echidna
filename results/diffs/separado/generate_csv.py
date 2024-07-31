import pandas as pd
import json
import csv
import os

# Get the filenames from the directory "separado"
files = os.listdir(".")

# Keep only the ones that end with "json", deleting the ".json" extension from the name
files = [f[:-5] for f in files if f.endswith("json")]

print(files)

def turn_json_to_csv(filename):
    # Load the JSON data
    with open(f"{filename}.json", "r") as f:
        data = json.load(f)


    # Sort the data by "Test Limit" in ascending order
    data.sort(key=lambda x: x["Test Limit"])

    # Open the CSV file for writing
    with open(f"{filename}.csv", "w", newline="") as csvfile:
        writer = csv.writer(csvfile)

        # Write the header row
        writer.writerow(["Contract", "Test Limit", "Mode", "Node Difference", "Edge Difference", "Reduce Combinations"])

        # Write each object as a row
        for item in data:
            writer.writerow(item.values())

    print(f"Data sorted and converted to CSV file: {filename}.csv")



for file in files:
    turn_json_to_csv(file)

