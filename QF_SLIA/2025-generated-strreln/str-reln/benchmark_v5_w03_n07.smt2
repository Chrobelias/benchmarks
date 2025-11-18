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

(assert (str.in_re x (re.++ (str.to_re "9") (re.+ (str.to_re "645")))))
(assert (str.in_re y (re.union (re.+ (re.+ (str.to_re "82"))) (re.+ (re.range "1" "3")))))
(assert (str.in_re z (re.union (str.to_re "3") (re.++ (re.+ (re.range "7" "9")) (str.to_re "228")))))
(assert (str.in_re a (re.++ (re.union (str.to_re "706") (re.range "4" "9")) (re.+ (re.range "6" "9")))))
(assert (str.in_re b (re.+ (str.to_re "445"))))

(assert (> (+ (* (- 6) (str.len x)) (str.len y) (* (- 8) (str.to_int y)) (* (- 9) (str.to_int b))) 13))
(assert (>= (+ (str.to_int y) (* (- 5) (str.to_int z)) (* 2 (str.to_int b))) 9))

(check-sat)