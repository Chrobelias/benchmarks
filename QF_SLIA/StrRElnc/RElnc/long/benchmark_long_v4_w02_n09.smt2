(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ a x z "83")))

(assert (str.in_re a (re.union (str.to_re "720") (re.+ (re.union (re.range "1" "6") (re.* (str.to_re "92")))))))
(assert (str.in_re z (re.* (str.to_re "517"))))
(assert (str.in_re y (re.+ (re.range "1" "9"))))
(assert (str.in_re x (re.++ (str.to_re "145") (re.+ (str.to_re "398")))))

(assert (< (+ (* 5 (str.len x)) (* 4 (str.len y)) (* 3 (str.to_int y))) 37))

(check-sat)