# Shell Script Bug: Prematurely Exiting `find` Loop

This repository demonstrates a common error in shell scripts that use `find` with a `while` loop. The script is intended to process all files in the current directory, but it prematurely exits if an error occurs during processing of a single file. This is because the `exit 1` command within the loop terminates the entire script.

## Bug Description
The script uses `find` to locate files and then processes them in a `while` loop. However, if a file processing operation fails (simulated by a conditional statement), the script exits immediately. This is undesirable behavior; the script should continue processing other files, even if some fail.

## Solution
The improved script uses a more robust approach.  Instead of using `exit 1`, error messages are printed to standard error using `>&2`, and the loop continues to process other files.

## How to Run
1. Clone this repository.
2. Run the buggy script: `./bug.sh` (observe premature exit on simulated error)
3. Run the corrected script: `./bugSolution.sh` (observe handling of error and completion of processing)