
# for i in $(ls rnasim_s100-s200/data | grep "0.fasta" | sed 's/\.fasta//g')
# do
    # java -cp /projects/tallis/nute/code/distance AlignmentStatistics rnasim_s100-s200/data/${i}.fasta test_alignment_stats.txt
    # cat test_alignment_stats.txt | python scripts/split_alignment_stats.py $i >> all_alignment_stats.txt
    # rm test_alignment_stats.txt
# done

# for i in $(ls rnasim_s500-s1000/data | grep "0.fasta" | sed 's/\.fasta//g')
# do
    # java -cp /projects/tallis/nute/code/distance AlignmentStatistics rnasim_s500-s1000/data/${i}.fasta test_alignment_stats.txt
    # cat test_alignment_stats.txt | python scripts/split_alignment_stats.py $i >> all_alignment_stats.txt
    # rm test_alignment_stats.txt
# done

for i in $(ls indel_m2/data | grep "0.fasta" | sed 's/\.fasta//g')
do
    java -cp /projects/tallis/nute/code/distance AlignmentStatistics indel_m2/data/${i}.fasta test_alignment_stats.txt
    cat test_alignment_stats.txt | python scripts/split_alignment_stats.py $i >> indel_m2_alignment_stats.txt
    rm test_alignment_stats.txt
done