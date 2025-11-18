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

(assert (str.in_re x (re.++ (str.to_re "24") (re.union (re.++ (str.to_re "657") (re.+ (str.to_re "277"))) (str.to_re "24")))))
(assert (str.in_re y (re.++ (str.to_re "95") (re.++ (str.to_re "2") (re.* (str.to_re "52"))))))
(assert (str.in_re z (re.union (re.union (str.to_re "494") (re.union (str.to_re "93") (re.+ (str.to_re "78")))) (str.to_re "13"))))
(assert (str.in_re a (re.++ (str.to_re "294") (re.+ (str.to_re "89")))))
(assert (str.in_re b (re.+ (re.+ (re.range "0" "5")))))

(assert (< (+ (* 2 (str.len a)) (* (- 4) (str.to_int a)) (* (- 7) (str.to_int b))) 96))
(assert (<= (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y)) (* 2 (str.to_int z)) (* 9 (str.to_int a)) (* 7 (str.to_int b))) 45))
(assert (> (+ (* 6 (str.len x)) (* (- 9) (str.len y)) (* (- 3) (str.len z)) (* (- 4) (str.len a)) (* (- 6) (str.len b))) 100))

(check-sat)