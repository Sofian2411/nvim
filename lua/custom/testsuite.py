import os

# Get the path to the executable
PATH_TO_EXECUTABLE = os.path.join(os.path.dirname(os.path.dirname(__file__)), "src/tc")
print(PATH_TO_EXECUTABLE)

test_success = [0 for i in range(1)]
test_number = [0 for i in range(1)]

# Pass each file of the "good" directory to the executable
# ./tc tests/good/...
for filename in os.listdir(os.path.join(os.path.dirname(__file__), "good")):
    print(f"Testing {filename}...")
    os.system(f"{PATH_TO_EXECUTABLE} {os.path.join(os.path.dirname(__file__), 'good', filename)}")
    print(os.path.join(os.path.dirname(__file__), 'good', filename))
    # We get the return code of the last command
    return_code = os.system("echo $?")
    # If the return code is not 0, the test succeeded
    if (return_code == 0):
        test_success[0] += 1
    test_number[0] += 1

# Print the results with colors
print(f"\033[92m{test_success[0]}/{test_number[0]} tests passed\033[0m")