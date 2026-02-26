(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ x a "96" "65" y)))

(assert (str.in_re a (re.* (re.++ (str.to_re "710") (re.++ (re.* (str.to_re "75")) (str.to_re "18"))))))
(assert (str.in_re y (re.++ (str.to_re "533") (re.* (re.++ (str.to_re "48") (re.* (str.to_re "74")))))))
(assert (str.in_re z (re.union (str.to_re "8") (re.* (re.+ (re.range "0" "9"))))))
(assert (str.in_re x (re.++ (re.* (re.+ (re.+ (str.to_re "406")))) (str.to_re "537"))))

(assert (<= (+ (* 9 (str.len y)) (* (- 2) (str.to_int y)) (* 6 (str.to_int z))) 98))

(check-sat)