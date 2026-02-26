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

(assert (= x (str.++ a "55" y z)))

(assert (str.in_re x (re.union (str.to_re "181") (re.* (re.range "2" "9")))))
(assert (str.in_re y (re.* (re.* (re.range "0" "3")))))
(assert (str.in_re z (re.* (re.* (re.union (str.to_re "2") (re.* (re.range "3" "9")))))))
(assert (str.in_re a (re.union (re.+ (str.to_re "191")) (re.+ (str.to_re "29")))))

(assert (> (+ (* (- 8) (str.len z)) (* (- 2) (str.to_int a))) 83))

(check-sat)