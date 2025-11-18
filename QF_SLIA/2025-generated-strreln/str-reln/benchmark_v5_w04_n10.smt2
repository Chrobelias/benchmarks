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

(assert (str.in_re x (re.union (re.union (re.* (str.to_re "294")) (re.+ (str.to_re "510"))) (str.to_re "42"))))
(assert (str.in_re y (re.++ (str.to_re "311") (re.union (str.to_re "82") (re.+ (str.to_re "765"))))))
(assert (str.in_re z (re.* (re.* (re.union (str.to_re "83") (str.to_re "88"))))))
(assert (str.in_re a (re.union (re.* (re.range "7" "9")) (re.+ (str.to_re "805")))))
(assert (str.in_re b (re.++ (str.to_re "649") (re.union (re.* (str.to_re "4")) (str.to_re "801")))))

(assert (< (+ (str.to_int x) (* 5 (str.to_int y)) (* 3 (str.to_int z)) (* 4 (str.to_int a)) (* (- 10) (str.to_int b))) 65))
(assert (> (+ (str.len x) (str.len y) (* (- 5) (str.len z)) (* 5 (str.len a)) (- (str.len b))) 15))
(assert (< (+ (* (- 2) (str.len x)) (* 10 (str.to_int z))) 64))

(check-sat)