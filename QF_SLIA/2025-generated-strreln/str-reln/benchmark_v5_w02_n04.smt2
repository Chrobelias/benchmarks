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

(assert (str.in_re x (re.+ (re.++ (str.to_re "91") (re.union (re.* (str.to_re "545")) (str.to_re "23"))))))
(assert (str.in_re y (re.++ (str.to_re "994") (re.union (re.range "3" "9") (re.+ (str.to_re "4"))))))
(assert (str.in_re z (re.* (str.to_re "4"))))
(assert (str.in_re a (re.union (re.* (re.+ (re.range "2" "8"))) (str.to_re "96"))))
(assert (str.in_re b (re.++ (re.+ (re.+ (re.* (str.to_re "3")))) (str.to_re "7"))))

(assert (>= (+ (* (- 10) (str.to_int x)) (str.to_int z) (* 7 (str.to_int a))) 97))
(assert (= (+ (* 3 (str.len x)) (* 3 (str.len y)) (* (- 5) (str.len z)) (* (- 5) (str.len a)) (- (str.len b))) 44))

(check-sat)