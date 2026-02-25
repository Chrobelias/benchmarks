(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.+ (re.union (str.to_re "726") (re.+ (re.* (str.to_re "326")))))))
(assert (str.in_re x (re.++ (re.* (re.union (str.to_re "149") (str.to_re "38"))) (str.to_re "66"))))
(assert (str.in_re a (re.++ (str.to_re "88") (re.++ (re.+ (re.+ (str.to_re "62"))) (str.to_re "70")))))
(assert (str.in_re z (re.++ (re.range "6" "9") (re.+ (re.+ (re.* (re.range "2" "4")))))))

(assert (< (+ (* 2 (str.len z)) (* 7 (str.to_int x)) (* 9 (str.to_int z))) 74))

(check-sat)