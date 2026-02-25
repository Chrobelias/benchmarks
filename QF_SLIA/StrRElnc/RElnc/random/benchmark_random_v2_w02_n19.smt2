(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "62")))

(assert (str.in_re y (re.union (re.* (re.+ (re.range "0" "4"))) (str.to_re "824"))))
(assert (str.in_re x (re.union (re.range "0" "2") (re.++ (str.to_re "1") (re.+ (re.range "2" "8"))))))

(assert (> (+ (* 4 (str.len x)) (* 6 (str.to_int x))) 47))

(check-sat)