(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.* (re.+ (re.range "1" "5"))) (re.* (re.range "4" "9")))))
(assert (str.in_re y (re.++ (re.union (re.++ (re.+ (str.to_re "36")) (str.to_re "313")) (re.range "1" "6")) (str.to_re "88"))))
(assert (str.in_re z (re.union (re.* (str.to_re "72")) (re.* (re.+ (str.to_re "210"))))))
(assert (str.in_re a (re.+ (str.to_re "8"))))

(assert (= (+ (* (- 7) (str.len x)) (* 7 (str.len y)) (* (- 3) (str.len z)) (* (- 2) (str.len a))) 19))
(assert (= (+ (* (- 7) (str.to_int x)) (* 9 (str.to_int y)) (* 8 (str.to_int z)) (* 2 (str.to_int a))) 1))

(check-sat)