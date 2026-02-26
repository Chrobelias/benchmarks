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
(assert (>= (str.len a) 1000))

(assert (= y (str.++ z "65" a x)))

(assert (str.in_re x (re.union (str.to_re "6") (re.* (re.range "6" "8")))))
(assert (str.in_re z (re.* (re.+ (re.+ (re.range "7" "9"))))))
(assert (str.in_re a (re.* (re.* (re.union (re.range "2" "4") (re.+ (str.to_re "5")))))))
(assert (str.in_re y (re.union (re.* (re.union (re.range "5" "8") (str.to_re "57"))) (str.to_re "352"))))

(assert (>= (+ (- (str.len z)) (* (- 5) (str.to_int z))) 10))

(check-sat)