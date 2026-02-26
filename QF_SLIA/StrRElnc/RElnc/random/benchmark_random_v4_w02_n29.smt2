(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ z x y "67")))

(assert (str.in_re z (re.+ (re.union (str.to_re "544") (str.to_re "844")))))
(assert (str.in_re a (re.+ (re.++ (re.* (re.range "4" "9")) (re.range "7" "9")))))
(assert (str.in_re x (re.union (str.to_re "578") (re.+ (re.+ (re.range "7" "9"))))))
(assert (str.in_re y (re.union (re.* (str.to_re "9")) (str.to_re "572"))))

(assert (< (+ (* (- 2) (str.len x)) (* (- 8) (str.len y)) (* (- 8) (str.to_int x))) 66))

(check-sat)