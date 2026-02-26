(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x y) (str.++ a z "41")))

(assert (str.in_re a (re.union (str.to_re "4") (re.++ (re.+ (str.to_re "53")) (str.to_re "2")))))
(assert (str.in_re x (re.union (re.* (re.range "4" "9")) (re.* (str.to_re "351")))))
(assert (str.in_re y (re.+ (re.range "1" "7"))))
(assert (str.in_re z (re.+ (re.union (str.to_re "42") (str.to_re "3")))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 10) (str.len z)) (* (- 6) (str.len a)) (* (- 7) (str.to_int x)) (* 3 (str.to_int a))) 81))

(check-sat)