(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ a y) (str.++ x "53" z)))

(assert (str.in_re y (re.union (re.union (re.* (re.range "3" "9")) (str.to_re "19")) (str.to_re "32"))))
(assert (str.in_re a (re.+ (re.range "2" "6"))))
(assert (str.in_re x (re.* (re.++ (re.range "3" "6") (str.to_re "67")))))
(assert (str.in_re z (re.union (re.* (str.to_re "38")) (re.+ (str.to_re "95")))))

(assert (> (+ (* 5 (str.len x)) (* (- 6) (str.len z)) (* 2 (str.len a)) (* 10 (str.to_int x))) 29))

(check-sat)