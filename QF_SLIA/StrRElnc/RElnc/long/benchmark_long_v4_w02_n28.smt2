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
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ a "78" y "65" z)))

(assert (str.in_re y (re.+ (re.union (str.to_re "878") (re.* (str.to_re "48"))))))
(assert (str.in_re z (re.++ (re.union (re.range "1" "9") (str.to_re "293")) (re.* (str.to_re "20")))))
(assert (str.in_re x (re.* (re.union (re.+ (re.range "1" "9")) (str.to_re "31")))))
(assert (str.in_re a (re.union (re.+ (str.to_re "734")) (re.union (str.to_re "48") (str.to_re "302")))))

(assert (= (+ (* (- 4) (str.len y)) (* (- 8) (str.to_int a))) 17))

(check-sat)