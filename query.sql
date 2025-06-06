-- Выведем первую строку из таблицы
SELECT * FROM fr.fram_acc LIMIT 1;

-- Выберем все РНК крыс
SELECT fr.rfam_acc, fr.rfamseq_acc, fr.seq_start, fr.seq_end
FROM full_region fr, rfamseq rf, taxonomy tx
WHERE rf.ncbi_id = tx.ncbi_id
  AND fr.rfamseq_acc = rf.rfamseq_acc
  AND tx.ncbi_id = 10116
  AND is_significant = 1;
-- test run
