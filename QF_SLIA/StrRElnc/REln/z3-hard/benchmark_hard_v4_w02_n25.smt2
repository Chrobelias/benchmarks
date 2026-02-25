(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (str.to_re "721") (re.+ (re.range "0" "8")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "14") (re.+ (re.range "2" "7"))))))
(assert (str.in_re a (re.* (str.to_re "4"))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "55") (re.* (str.to_re "2"))) (re.range "2" "5"))))

(assert (= (+ (* 9 (str.len x)) (* 2 (str.len y)) (* (- 2) (str.len z)) (* (- 9) (str.to_int x)) (* (- 4) (str.to_int y)) (- (str.to_int a))) 93))

(check-sat)