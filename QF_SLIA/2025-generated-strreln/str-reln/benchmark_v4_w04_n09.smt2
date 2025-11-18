(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "749") (re.+ (str.to_re "824"))) (str.to_re "499")))))
(assert (str.in_re y (re.union (re.range "4" "6") (re.++ (re.++ (str.to_re "94") (re.+ (str.to_re "382"))) (str.to_re "5")))))
(assert (str.in_re z (re.++ (re.range "3" "5") (re.+ (re.+ (str.to_re "3"))))))
(assert (str.in_re a (re.+ (re.range "3" "7"))))

(assert (<= (+ (* 3 (str.to_int x)) (* (- 6) (str.to_int y)) (* 6 (str.to_int z)) (* 4 (str.to_int a))) 0))
(assert (< (+ (* 5 (str.len y)) (* 3 (str.to_int x)) (* 6 (str.to_int z))) 50))
(assert (> (+ (* 9 (str.to_int x)) (* 2 (str.to_int y)) (* (- 4) (str.to_int z))) 74))

(check-sat)