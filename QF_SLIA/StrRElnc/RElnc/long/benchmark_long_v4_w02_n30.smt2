(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= z (str.++ y "98" a "39" x)))

(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "876") (re.* (str.to_re "724")))) (str.to_re "94"))))
(assert (str.in_re a (re.* (str.to_re "458"))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "9")) (re.range "2" "9")))))
(assert (str.in_re y (re.* (re.* (re.range "7" "9")))))

(assert (>= (+ (* 8 (str.len x)) (* (- 9) (str.len y)) (* 6 (str.to_int z))) 51))

(check-sat)