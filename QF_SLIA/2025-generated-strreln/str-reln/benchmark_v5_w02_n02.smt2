(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.+ (re.++ (re.+ (str.to_re "846")) (re.+ (str.to_re "17"))))))
(assert (str.in_re y (re.+ (re.+ (re.range "3" "8")))))
(assert (str.in_re z (re.+ (str.to_re "37"))))
(assert (str.in_re a (re.++ (re.range "7" "9") (re.union (re.range "4" "6") (re.+ (str.to_re "31"))))))
(assert (str.in_re b (re.union (re.++ (re.+ (str.to_re "810")) (re.range "0" "2")) (str.to_re "46"))))

(assert (= (+ (* (- 5) (str.len z)) (* 5 (str.to_int a)) (* 7 (str.to_int b))) 94))

(check-sat)