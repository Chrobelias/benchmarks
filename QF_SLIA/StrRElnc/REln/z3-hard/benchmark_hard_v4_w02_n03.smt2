(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "923") (str.to_re "108"))))))
(assert (str.in_re x (re.* (re.++ (re.range "7" "9") (re.++ (re.range "0" "7") (re.* (str.to_re "406")))))))
(assert (str.in_re z (re.+ (re.* (re.+ (re.+ (str.to_re "1")))))))
(assert (str.in_re a (re.+ (re.++ (re.* (re.range "2" "4")) (str.to_re "250")))))

(assert (< (+ (* (- 2) (str.len y)) (* 5 (str.len z)) (* 8 (str.to_int a))) 88))

(check-sat)