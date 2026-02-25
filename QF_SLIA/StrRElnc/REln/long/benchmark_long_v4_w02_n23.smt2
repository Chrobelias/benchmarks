(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))

(assert (str.in_re z (re.+ (re.union (str.to_re "994") (re.++ (re.* (str.to_re "9")) (str.to_re "69"))))))
(assert (str.in_re y (re.union (re.* (str.to_re "9")) (re.+ (re.+ (str.to_re "1"))))))
(assert (str.in_re a (re.++ (re.union (re.union (re.* (str.to_re "652")) (str.to_re "5")) (re.range "1" "9")) (re.range "6" "9"))))
(assert (str.in_re x (re.union (re.union (str.to_re "66") (re.* (re.range "1" "7"))) (str.to_re "4"))))

(assert (<= (+ (* (- 6) (str.len x)) (* (- 10) (str.len z)) (* 4 (str.len a)) (* 8 (str.to_int z)) (- (str.to_int a))) 66))

(check-sat)