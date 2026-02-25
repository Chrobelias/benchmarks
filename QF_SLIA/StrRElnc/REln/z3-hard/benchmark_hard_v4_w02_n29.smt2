(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.union (re.+ (re.range "3" "8")) (str.to_re "1"))))
(assert (str.in_re x (re.* (re.++ (re.++ (str.to_re "25") (str.to_re "570")) (str.to_re "845")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "74") (str.to_re "40")))))
(assert (str.in_re z (re.++ (re.* (re.range "4" "9")) (re.++ (re.* (str.to_re "4")) (re.range "7" "9")))))

(assert (= (+ (* (- 6) (str.len a)) (* 3 (str.to_int x)) (* 5 (str.to_int a))) 64))

(check-sat)