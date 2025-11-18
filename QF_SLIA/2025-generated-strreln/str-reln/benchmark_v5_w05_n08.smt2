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

(assert (str.in_re x (re.++ (re.+ (str.to_re "31")) (re.union (re.+ (re.range "3" "6")) (str.to_re "92")))))
(assert (str.in_re y (re.union (re.union (str.to_re "53") (re.range "6" "9")) (re.* (str.to_re "842")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "87")) (str.to_re "32"))))
(assert (str.in_re a (re.* (str.to_re "674"))))
(assert (str.in_re b (re.union (re.range "2" "7") (re.+ (re.++ (str.to_re "98") (str.to_re "953"))))))

(assert (< (+ (* (- 2) (str.len x)) (* (- 7) (str.to_int y)) (* 4 (str.to_int b))) 7))
(assert (>= (+ (* 3 (str.len x)) (* 9 (str.len y)) (* 2 (str.len z)) (str.len a) (* (- 6) (str.len b))) 32))
(assert (< (+ (* 8 (str.len y)) (* 6 (str.to_int x)) (* 8 (str.to_int b))) 40))

(check-sat)