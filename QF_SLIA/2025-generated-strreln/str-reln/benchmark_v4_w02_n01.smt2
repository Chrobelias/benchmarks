(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "662")) (re.++ (re.range "2" "5") (re.range "2" "9")))))
(assert (str.in_re y (re.union (str.to_re "383") (re.* (re.union (str.to_re "29") (re.+ (str.to_re "23")))))))
(assert (str.in_re z (re.++ (re.++ (re.* (re.range "3" "5")) (re.+ (re.range "3" "8"))) (str.to_re "88"))))
(assert (str.in_re a (re.union (str.to_re "596") (re.+ (re.union (str.to_re "47") (re.range "4" "9"))))))

(assert (< (+ (* 4 (str.len a)) (* 4 (str.to_int z))) 11))

(check-sat)