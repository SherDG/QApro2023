# Create 2 commits
number=$RANDOM
for ((i=1; i<=2; i++)); do
    # Create a new file with a unique name
    commitName=$(git rev-parse --abbrev-ref HEAD)
    touch "file $RANDOM_$i.txt"
    
    # Add the file to the staging area
    git add .
    
    # Commit the changes with a unique commit message
    git commit -m "Commit ${commitName}_${number}_$i"
done

#Conflixt
